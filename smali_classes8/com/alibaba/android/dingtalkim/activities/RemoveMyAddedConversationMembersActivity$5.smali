.class final Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;
.super Ljava/lang/Object;
.source "RemoveMyAddedConversationMembersActivity.java"

# interfaces
.implements Ldht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 4
    .param p1, "nameWrapper"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 1039
    iget-object v0, p1, Lckl;->d:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$5;->a:J

    .line 2039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 172
    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;JLjava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
