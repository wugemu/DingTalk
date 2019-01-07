.class public final Lbjv$22;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

.field final synthetic d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ding/data/object/ConversationBoardObject;J)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lbjv$22;->a:Ljava/lang/String;

    iput-object p2, p0, Lbjv$22;->b:Ljava/util/List;

    iput-object p3, p0, Lbjv$22;->c:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    iput-wide p4, p0, Lbjv$22;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1055
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lbjv$22;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const-string/jumbo v1, "intent_key_group_task_board_list"

    iget-object v0, p0, Lbjv$22;->b:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1057
    const-string/jumbo v0, "intent_key_group_task_board"

    iget-object v1, p0, Lbjv$22;->c:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1058
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-wide v2, p0, Lbjv$22;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1059
    return-object p1
.end method
