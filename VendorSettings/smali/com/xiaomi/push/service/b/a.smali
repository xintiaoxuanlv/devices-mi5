.class public final Lcom/xiaomi/push/service/b/a;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field private static bfk:Lcom/xiaomi/push/service/b/b;


# direct methods
.method public static declared-synchronized ck(Z)V
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/xiaomi/push/service/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "timer is not initialized"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit v1

    return-void

    .line 86
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;

    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/b/b;->ck(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dl(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 30
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Lcom/xiaomi/push/service/b/c;

    invoke-direct {v0, v2}, Lcom/xiaomi/push/service/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;

    .line 78
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 36
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 38
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 40
    const-string v6, "com.xiaomi.push.service.XMJobService"

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android.permission.BIND_JOB_SERVICE"

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 41
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    const/4 v0, 0x1

    .line 53
    :cond_1
    :goto_2
    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/c;->dm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should export service: com.xiaomi.push.service.XMJobService with permission android.permission.BIND_JOB_SERVICE in AndroidManifest.xml file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check service err : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 63
    :cond_4
    new-instance v0, Lcom/xiaomi/push/service/b/c;

    invoke-direct {v0, v2}, Lcom/xiaomi/push/service/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;

    goto :goto_0
.end method

.method public static declared-synchronized isAlive()Z
    .locals 2

    .prologue
    .line 97
    const-class v1, Lcom/xiaomi/push/service/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;

    invoke-interface {v0}, Lcom/xiaomi/push/service/b/b;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stop()V
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/xiaomi/push/service/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/b/a;->bfk:Lcom/xiaomi/push/service/b/b;

    invoke-interface {v0}, Lcom/xiaomi/push/service/b/b;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
