.class final Lfbg$5;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbg;->a(Ljava/util/List;Lcma;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcma;

.field final synthetic e:Lfbg;


# direct methods
.method constructor <init>(Lfbg;ZLjava/util/List;ZLcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 148
    iput-object p1, p0, Lfbg$5;->e:Lfbg;

    iput-boolean p2, p0, Lfbg$5;->a:Z

    iput-object p3, p0, Lfbg$5;->b:Ljava/util/List;

    iput-boolean p4, p0, Lfbg$5;->c:Z

    iput-object p5, p0, Lfbg$5;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-boolean v1, p0, Lfbg$5;->a:Z

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lfbg$5;->e:Lfbg;

    iget-object v2, p0, Lfbg$5;->b:Ljava/util/List;

    iget-boolean v3, p0, Lfbg$5;->c:Z

    invoke-static {v1, v2, v3}, Lfbg;->a(Lfbg;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string/jumbo v1, "UserProfileAPI"

    const-string/jumbo v2, "getUserProfileList from local."

    invoke-static {v1, v2}, Los;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lfbg$5;->e:Lfbg;

    iget-object v2, p0, Lfbg$5;->d:Lcma;

    invoke-static {v1, v0, v2}, Lfbg;->a(Lfbg;Ljava/lang/Object;Lcma;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lfbg$5;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lfbg$5;->e:Lfbg;

    iget-object v2, p0, Lfbg$5;->b:Ljava/util/List;

    iget-object v3, p0, Lfbg$5;->d:Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lfbg;->a(Ljava/util/List;Lcma;Ljava/util/List;)V

    .line 165
    :cond_1
    return-void
.end method
