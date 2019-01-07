.class public final Lbjw$4;
.super Ljava/lang/Object;
.source "DingNotificationCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjw;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/CommentObject;

.field final synthetic b:Lbjw;


# direct methods
.method public constructor <init>(Lbjw;Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 0
    .param p1, "this$0"    # Lbjw;

    .prologue
    .line 169
    iput-object p1, p0, Lbjw$4;->b:Lbjw;

    iput-object p2, p0, Lbjw$4;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 169
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1172
    if-eqz p1, :cond_0

    .line 1175
    iget-object v0, p0, Lbjw$4;->b:Lbjw;

    iget-object v1, p0, Lbjw$4;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    iget v1, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->g:I

    invoke-static {v0, v1}, Lbjw;->a(Lbjw;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    invoke-static {p1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lbkh;->l(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget-object v0, p0, Lbjw$4;->b:Lbjw;

    iget-object v1, p0, Lbjw$4;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    iget-wide v2, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    .line 1182
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->app_name:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbjw$4;->b:Lbjw;

    iget-object v4, p0, Lbjw$4;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 1184
    invoke-static {v3, v4}, Lbjw;->a(Lbjw;Lcom/alibaba/android/ding/base/objects/CommentObject;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1181
    invoke-static/range {v0 .. v5}, Lbjw;->a(Lbjw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 191
    return-void
.end method
