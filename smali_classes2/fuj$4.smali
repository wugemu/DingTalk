.class final Lfuj$4;
.super Ljava/lang/Object;
.source "NameCardCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfuj;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field final synthetic b:Lfuj;


# direct methods
.method constructor <init>(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 0
    .param p1, "this$0"    # Lfuj;

    .prologue
    .line 291
    iput-object p1, p0, Lfuj$4;->b:Lfuj;

    iput-object p2, p0, Lfuj$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 294
    iget-object v1, p0, Lfuj$4;->b:Lfuj;

    .line 1040
    iget-object v1, v1, Lfuj;->b:Ljava/util/List;

    .line 294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuj$a;

    .line 295
    .local v0, "listener":Lfuj$a;
    if-eqz v0, :cond_0

    .line 296
    iget-object v2, p0, Lfuj$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-interface {v0, v2}, Lfuj$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    goto :goto_0

    .line 299
    .end local v0    # "listener":Lfuj$a;
    :cond_1
    return-void
.end method
