.class Lmiui/media/Mp3Recorder$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic Au:Lmiui/media/Mp3Recorder;


# direct methods
.method public constructor <init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lmiui/media/Mp3Recorder$a;->Au:Lmiui/media/Mp3Recorder;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 587
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 588
    return-void

    .line 579
    :pswitch_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$a;->Au:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lmiui/media/Mp3Recorder$a;->Au:Lmiui/media/Mp3Recorder;

    invoke-static {v0}, Lmiui/media/Mp3Recorder;->i(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$a;->Au:Lmiui/media/Mp3Recorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lmiui/media/Mp3Recorder$RecordingErrorListener;->onError(Lmiui/media/Mp3Recorder;I)V

    goto :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method