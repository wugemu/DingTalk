.class public final Ldjo$3;
.super Ljava/lang/Object;
.source "EmotionSendManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ldjo$a;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ldjo;


# direct methods
.method public constructor <init>(Ldjo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldjo;

    .prologue
    .line 117
    iput-object p1, p0, Ldjo$3;->i:Ldjo;

    iput-object p2, p0, Ldjo$3;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Ldjo$3;->b:Ljava/lang/String;

    iput-wide p4, p0, Ldjo$3;->c:J

    iput p6, p0, Ldjo$3;->d:I

    iput-object p7, p0, Ldjo$3;->e:Ljava/lang/String;

    iput-object p8, p0, Ldjo$3;->f:Ljava/lang/String;

    iput-object p9, p0, Ldjo$3;->g:Ldjo$a;

    iput-object p10, p0, Ldjo$3;->h:Ljava/lang/String;

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
    .line 120
    iget-object v1, p0, Ldjo$3;->i:Ldjo;

    iget-object v2, p0, Ldjo$3;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Ldjo$3;->b:Ljava/lang/String;

    iget-wide v4, p0, Ldjo$3;->c:J

    iget v6, p0, Ldjo$3;->d:I

    iget-object v7, p0, Ldjo$3;->e:Ljava/lang/String;

    iget-object v8, p0, Ldjo$3;->f:Ljava/lang/String;

    iget-object v9, p0, Ldjo$3;->g:Ldjo$a;

    iget-object v10, p0, Ldjo$3;->h:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Ldjo;->a(Ldjo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ldjo$a;Ljava/lang/String;)V

    .line 121
    return-void
.end method
