.class final Lfcl$2;
.super Ljava/lang/Object;
.source "PostCreater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field final synthetic b:Lfcl;


# direct methods
.method constructor <init>(Lfcl;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "this$0"    # Lfcl;

    .prologue
    .line 144
    iput-object p1, p0, Lfcl$2;->b:Lfcl;

    iput-object p2, p0, Lfcl$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 147
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v0

    .line 151
    .local v0, "impl":Lfdw;
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v3

    .line 152
    .local v3, "pool":Lfdo;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 154
    .local v2, "params":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "-1"

    aput-object v7, v2, v6

    .line 156
    sget-object v6, Lfdw$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lfdw;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lfdx;->a()Lfdx;

    move-result-object v5

    .line 159
    .local v5, "usrImpl":Lfdx;
    sget-object v6, Lfdx$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lfdx;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v6

    sget-object v7, Lfdu$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lfdu;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    invoke-virtual {v3, v2}, Lfdo;->release(Ljava/lang/Object;)V

    .line 167
    iget-object v6, p0, Lfcl$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 169
    .local v4, "postObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    invoke-virtual {v0, v4}, Lfdw;->b(Ljava/util/Collection;)I

    .line 170
    invoke-virtual {v5, v4}, Lfdx;->b(Ljava/util/Collection;)I

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "circle_on_create_post"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "circle_on_create_post"

    iget-object v7, p0, Lfcl$2;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 176
    return-void
.end method
