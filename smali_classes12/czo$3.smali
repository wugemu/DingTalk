.class final Lczo$3;
.super Ljava/lang/Object;
.source "UserSpaceLinkViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lczo;


# direct methods
.method constructor <init>(Lczo;)V
    .locals 0
    .param p1, "this$0"    # Lczo;

    .prologue
    .line 148
    iput-object p1, p0, Lczo$3;->a:Lczo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    const-string/jumbo v0, "13020006"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lczo$3;->a:Lczo;

    iget-object v1, v1, Lczo;->d:Landroid/app/Activity;

    iget-object v2, p0, Lczo$3;->a:Lczo;

    iget-object v2, v2, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->creatorId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;J)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 156
    return-void
.end method
