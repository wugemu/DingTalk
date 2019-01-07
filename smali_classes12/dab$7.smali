.class final Ldab$7;
.super Ljava/lang/Object;
.source "UserThirdPartyViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/text/SpannableString;

.field final synthetic b:J

.field final synthetic c:Ldab;


# direct methods
.method constructor <init>(Ldab;[Landroid/text/SpannableString;J)V
    .locals 1
    .param p1, "this$0"    # Ldab;

    .prologue
    .line 780
    iput-object p1, p0, Ldab$7;->c:Ldab;

    iput-object p2, p0, Ldab$7;->a:[Landroid/text/SpannableString;

    iput-wide p3, p0, Ldab$7;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "oid":Ljava/lang/String;
    iget-object v1, p0, Ldab$7;->c:Ldab;

    iget-object v1, v1, Ldab;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldab$7;->c:Ldab;

    invoke-static {v1}, Ldab;->a(Ldab;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Ldab$7;->c:Ldab;

    invoke-static {v1}, Ldab;->a(Ldab;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    const-string/jumbo v2, "org_id"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 799
    :goto_0
    return-void

    .line 791
    :pswitch_0
    iget-object v1, p0, Ldab$7;->c:Ldab;

    const-string/jumbo v2, "chat_checkin_thanks_text"

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Ldab;->a(Ldab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Ldab$7;->c:Ldab;

    iget-object v2, p0, Ldab$7;->a:[Landroid/text/SpannableString;

    aget-object v2, v2, p2

    iget-wide v4, p0, Ldab$7;->b:J

    invoke-static {v1, v2, v4, v5}, Ldab;->a(Ldab;Landroid/text/SpannableString;J)V

    goto :goto_0

    .line 795
    :pswitch_1
    iget-object v1, p0, Ldab$7;->c:Ldab;

    const-string/jumbo v2, "chat_checkin_thanks_customize"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ldab;->a(Ldab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Ldab$7;->c:Ldab;

    iget-wide v2, p0, Ldab$7;->b:J

    invoke-static {v1, v2, v3}, Ldab;->a(Ldab;J)V

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
