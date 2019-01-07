.class public final Lfzo$2;
.super Ljava/lang/Object;
.source "CSpaceCreatorHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lfzo;


# direct methods
.method public constructor <init>(Lfzo;JI)V
    .locals 0
    .param p1, "this$0"    # Lfzo;

    .prologue
    .line 121
    iput-object p1, p0, Lfzo$2;->c:Lfzo;

    iput-wide p2, p0, Lfzo$2;->a:J

    iput p4, p0, Lfzo$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 121
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1126
    iget-object v0, p0, Lfzo$2;->c:Lfzo;

    .line 2023
    iget-object v0, v0, Lfzo;->b:Ljava/util/HashMap;

    .line 1126
    iget-wide v2, p0, Lfzo$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :cond_0
    :goto_0
    iget-object v0, p0, Lfzo$2;->c:Lfzo;

    iget-wide v2, p0, Lfzo$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfzo$2;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lfzo;->a(Lfzo;Ljava/lang/String;II)V

    .line 121
    return-void

    .line 1127
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1128
    iget-object v0, p0, Lfzo$2;->c:Lfzo;

    .line 3023
    iget-object v0, v0, Lfzo;->b:Ljava/util/HashMap;

    .line 1128
    iget-wide v2, p0, Lfzo$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1129
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lfzo$2;->c:Lfzo;

    .line 4023
    iget-object v0, v0, Lfzo;->b:Ljava/util/HashMap;

    .line 1130
    iget-wide v2, p0, Lfzo$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lfzo$2;->c:Lfzo;

    iget-wide v2, p0, Lfzo$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfzo$2;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lfzo;->a(Lfzo;Ljava/lang/String;II)V

    .line 144
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 139
    return-void
.end method
