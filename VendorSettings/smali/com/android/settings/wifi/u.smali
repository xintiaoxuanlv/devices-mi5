.class Lcom/android/vendorsettings/wifi/u;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aAN:Lcom/android/vendorsettings/wifi/s;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/s;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/u;->aAN:Lcom/android/vendorsettings/wifi/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/u;->aAN:Lcom/android/vendorsettings/wifi/s;

    iget-object v0, v0, Lcom/android/vendorsettings/wifi/s;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;->finish()V

    .line 157
    return-void
.end method