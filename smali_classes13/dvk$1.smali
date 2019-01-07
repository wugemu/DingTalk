.class final Ldvk$1;
.super Ljava/lang/Object;
.source "ToTaskSelectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvk;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ldvk;


# direct methods
.method constructor <init>(Ldvk;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldvk;

    .prologue
    .line 121
    iput-object p1, p0, Ldvk$1;->c:Ldvk;

    iput-object p2, p0, Ldvk$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldvk$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Ldvk$1;->c:Ldvk;

    iget-object v1, v0, Ldvk;->g:Landroid/app/Activity;

    iget-object v2, p0, Ldvk$1;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldvk$1;->b:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ldkf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JZ)V

    .line 125
    return-void
.end method
