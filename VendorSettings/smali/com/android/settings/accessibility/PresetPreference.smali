.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "PresetPreference.java"


# instance fields
.field private final CS:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setDialogLayoutResource(I)V

    .line 38
    const v0, 0x7f0400fd

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->au(I)V

    .line 40
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/PresetPreference;->CS:Landroid/view/accessibility/CaptioningManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 52
    const v0, 0x7f130068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    const v0, 0x7f1300db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->av(I)I

    move-result v2

    .line 55
    iget-object v3, p0, Lcom/android/settings/accessibility/PresetPreference;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3, v0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->at(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    const v0, 0x7f130079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
