.class Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->e(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->f(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;I)I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->a(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/privacypassword/PrivacyPasswordManager;->ba(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->c(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword$4;->anl:Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-static {v0}, Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;->d(Lcom/android/vendorsettings/privacypassword/ModifyAndInstructionPrivacyPassword;)Lcom/android/vendorsettings/cZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/cZ;->dX()V

    .line 349
    return-void
.end method