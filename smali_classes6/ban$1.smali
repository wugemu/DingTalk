.class final Lban$1;
.super Lckm$a;
.source "DingMeetingMinutesPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lban;


# direct methods
.method constructor <init>(Lban;)V
    .locals 0
    .param p1, "this$0"    # Lban;

    .prologue
    .line 47
    iput-object p1, p0, Lban$1;->a:Lban;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 47
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1050
    invoke-static {p1}, Lbkh;->H(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v0

    .line 1051
    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lban$1;->a:Lban;

    .line 2036
    iget-wide v2, v2, Lban;->b:J

    .line 1052
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lban$1;->a:Lban;

    .line 3321
    if-eqz p1, :cond_0

    iget-object v1, v0, Lban;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3322
    iget-object v1, v0, Lban;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3323
    iget-object v1, v0, Lban;->c:Ljava/util/List;

    sget-object v2, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3324
    iget-object v1, v0, Lban;->a:Lbam$b;

    iget-object v0, v0, Lban;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Lbam$b;->a(Ljava/util/List;)V

    .line 47
    :cond_0
    return-void
.end method
