.class final Lcom/android/b/a/h;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/h;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;Lcom/android/b/a/o;)I
    .locals 4

    .prologue
    .line 1331
    iget-wide v0, p1, Lcom/android/b/a/o;->aIE:J

    iget-wide v2, p2, Lcom/android/b/a/o;->aIE:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 1333
    :goto_0
    return v0

    .line 1332
    :cond_0
    iget-wide v0, p1, Lcom/android/b/a/o;->aIE:J

    iget-wide v2, p2, Lcom/android/b/a/o;->aIE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/android/b/a/h;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/b/a/o;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1327
    check-cast p1, Lcom/android/b/a/o;

    check-cast p2, Lcom/android/b/a/o;

    invoke-virtual {p0, p1, p2}, Lcom/android/b/a/h;->a(Lcom/android/b/a/o;Lcom/android/b/a/o;)I

    move-result v0

    return v0
.end method
