.class final Lbnu$2;
.super Ljava/lang/Object;
.source "PostCreater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field final synthetic b:Lbnu;


# direct methods
.method constructor <init>(Lbnu;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "this$0"    # Lbnu;

    .prologue
    .line 135
    iput-object p1, p0, Lbnu$2;->b:Lbnu;

    iput-object p2, p0, Lbnu$2;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 138
    invoke-static {}, Lbpe;->e()Lbpe;

    move-result-object v0

    .line 142
    .local v0, "impl":Lbpe;
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v3

    .line 143
    .local v3, "pool":Lbox;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 145
    .local v2, "params":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "-1"

    aput-object v7, v2, v6

    .line 147
    sget-object v6, Lbpe$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lbpe;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lbpf;->e()Lbpf;

    move-result-object v5

    .line 150
    .local v5, "usrImpl":Lbpf;
    sget-object v6, Lbpf$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lbpf;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v6

    sget-object v7, Lbpc$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lbpc;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    invoke-virtual {v3, v2}, Lbox;->release(Ljava/lang/Object;)V

    .line 158
    iget-object v6, p0, Lbnu$2;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 160
    .local v4, "postObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-virtual {v0, v4}, Lbpe;->b(Ljava/util/Collection;)I

    .line 161
    invoke-virtual {v5, v4}, Lbpf;->b(Ljava/util/Collection;)I

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "circle_on_create_post"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "circle_on_create_post"

    iget-object v7, p0, Lbnu$2;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 167
    return-void
.end method
