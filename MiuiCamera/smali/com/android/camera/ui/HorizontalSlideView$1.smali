.class Lcom/android/camera/ui/HorizontalSlideView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalSlideView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalSlideView;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/android/camera/ui/HorizontalSlideView;->access$000(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 33
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    float-to-int v1, p3

    neg-int v1, v1

    # invokes: Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$800(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 44
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I
    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$400(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I
    invoke-static {v2}, Lcom/android/camera/ui/HorizontalSlideView;->access$500(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v2

    if-ne v1, v2, :cond_1

    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I
    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$400(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I
    invoke-static {v2}, Lcom/android/camera/ui/HorizontalSlideView;->access$600(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I
    invoke-static {v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$400(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    # invokes: Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$700(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    # getter for: Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F
    invoke-static {v2}, Lcom/android/camera/ui/HorizontalSlideView;->access$200(Lcom/android/camera/ui/HorizontalSlideView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    # invokes: Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->access$300(Lcom/android/camera/ui/HorizontalSlideView;I)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
