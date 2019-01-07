.class final Ldjo$2$1;
.super Ljava/lang/Object;
.source "EmotionSendManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjo$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjo$2;


# direct methods
.method constructor <init>(Ldjo$2;)V
    .locals 0
    .param p1, "this$1"    # Ldjo$2;

    .prologue
    .line 84
    iput-object p1, p0, Ldjo$2$1;->a:Ldjo$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v1, v0, Ldjo$2;->j:Ldjo;

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v2, v0, Ldjo$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v3, v0, Ldjo$2;->c:Ljava/lang/String;

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-wide v4, v0, Ldjo$2;->d:J

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget v6, v0, Ldjo$2;->e:I

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v7, v0, Ldjo$2;->f:Ljava/lang/String;

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v8, v0, Ldjo$2;->g:Ljava/lang/String;

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v9, v0, Ldjo$2;->h:Ldjo$a;

    iget-object v0, p0, Ldjo$2$1;->a:Ldjo$2;

    iget-object v10, v0, Ldjo$2;->a:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Ldjo;->a(Ldjo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V

    .line 88
    return-void
.end method
