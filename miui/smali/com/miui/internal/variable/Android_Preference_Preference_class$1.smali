.class Lcom/miui/internal/variable/Android_Preference_Preference_class$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jU:Landroid/view/View;

.field final synthetic jV:Landroid/preference/CheckBoxPreference;

.field final synthetic jW:Lmiui/widget/SlidingButton;

.field final synthetic jX:Lcom/miui/internal/variable/Android_Preference_Preference_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jX:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iput-object p2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jU:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jV:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jW:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jX:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jX:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jV:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jU:Landroid/view/View;

    invoke-static {v1, v0, v2, v3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    .line 161
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->jW:Lmiui/widget/SlidingButton;

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method