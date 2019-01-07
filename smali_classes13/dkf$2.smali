.class final Ldkf$2;
.super Ljava/lang/Object;
.source "MultiToTaskUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;J)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Ldkf$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldkf$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldkf$2;->c:Ljava/util/List;

    iput-wide p4, p0, Ldkf$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Ldkf$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldkf$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldkf$2;->c:Ljava/util/List;

    iget-wide v4, p0, Ldkf$2;->d:J

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Ldkf;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JZ)V

    .line 105
    return-void
.end method
