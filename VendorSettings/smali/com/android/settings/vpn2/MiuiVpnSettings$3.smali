.class Lcom/android/settings/vpn2/MiuiVpnSettings$3;
.super Ljava/lang/Object;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awb:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$3;->awb:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 520
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$3;->awb:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->d(Lcom/android/internal/net/VpnProfile;)V

    .line 521
    return-void
.end method
