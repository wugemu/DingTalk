.class final Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;
.super Ljava/lang/Object;
.source "DevSecurityToolActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DevSecurityToolActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "load message failed. error:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1106
    if-eqz p1, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->a(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "\u52a0\u8f7dmessage success. mid="

    aput-object v2, v1, v6

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DevSecurityToolActivity"

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "load message success. mId="

    aput-object v3, v2, v6

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v1, ""

    .line 1111
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_0

    .line 1113
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v0, v1

    .line 1119
    :goto_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1120
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->a(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "\u975e\u52a0\u5bc6\u6d88\u606f mId="

    aput-object v3, v2, v6

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ",content="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->a(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 1129
    :cond_1
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DevSecurityToolActivity"

    const-string/jumbo v2, "load message failed."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 1115
    :pswitch_0
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1123
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->a(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "\u52a0\u5bc6\u6d88\u606f mId="

    aput-object v3, v2, v6

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ",content="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
