.class final Lapm$4;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverPresenter.java"

# interfaces
.implements Lauk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lapm;


# direct methods
.method constructor <init>(Lapm;Z)V
    .locals 0
    .param p1, "this$0"    # Lapm;

    .prologue
    .line 298
    iput-object p1, p0, Lapm$4;->b:Lapm;

    iput-boolean p2, p0, Lapm$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 315
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CalendarShareUpdateUserProfile load from remote exception, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lapm$4;->b:Lapm;

    .line 9042
    iget-object v0, v0, Lapm;->a:Lapl$b;

    .line 317
    invoke-interface {v0}, Lapl$b;->H_()V

    .line 318
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 301
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lapm$4;->b:Lapm;

    .line 1042
    iget-object v0, v0, Lapm;->a:Lapl$b;

    .line 301
    invoke-interface {v0}, Lapl$b;->H_()V

    .line 302
    iget-boolean v0, p0, Lapm$4;->a:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lapm$4;->b:Lapm;

    .line 2042
    iget-object v0, v0, Lapm;->d:Ljava/util/List;

    .line 303
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lapm$4;->b:Lapm;

    .line 3042
    iget-object v0, v0, Lapm;->d:Ljava/util/List;

    .line 306
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 308
    :cond_1
    iget-object v0, p0, Lapm$4;->b:Lapm;

    .line 4042
    iget-object v0, v0, Lapm;->c:Ljava/util/List;

    .line 308
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lapm$4;->b:Lapm;

    .line 5042
    iget-object v1, v1, Lapm;->d:Ljava/util/List;

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 309
    iget-object v0, p0, Lapm$4;->b:Lapm;

    .line 6042
    iget-object v0, v0, Lapm;->a:Lapl$b;

    .line 309
    iget-object v1, p0, Lapm$4;->b:Lapm;

    .line 7042
    iget-object v1, v1, Lapm;->c:Ljava/util/List;

    .line 309
    iget-object v2, p0, Lapm$4;->b:Lapm;

    .line 8042
    iget-object v2, v2, Lapm;->d:Ljava/util/List;

    .line 309
    invoke-interface {v0, v1, v2}, Lapl$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 311
    :cond_2
    return-void
.end method
