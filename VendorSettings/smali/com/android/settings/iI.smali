.class Lcom/android/vendorsettings/iI;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Cp:Lcom/android/vendorsettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/WirelessSettings;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/vendorsettings/iI;->Cp:Lcom/android/vendorsettings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/vendorsettings/iI;->Cp:Lcom/android/vendorsettings/WirelessSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANAGE_MOBILE_PLAN_DIALOG.onClickListener id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/WirelessSettings;->a(Lcom/android/vendorsettings/WirelessSettings;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/vendorsettings/iI;->Cp:Lcom/android/vendorsettings/WirelessSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/WirelessSettings;->b(Lcom/android/vendorsettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    return-void
.end method