.class public Lcom/bumptech/glide/load/b/a/b;
.super Ljava/lang/Object;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dr()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/b/c;)Lcom/bumptech/glide/load/b/s;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/b/a/a;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lcom/bumptech/glide/load/b/c;->c(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/a/a;-><init>(Lcom/bumptech/glide/load/b/s;)V

    return-object v0
.end method
