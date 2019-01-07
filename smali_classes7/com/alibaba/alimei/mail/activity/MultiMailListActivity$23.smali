.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$23;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lsd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/widget/ImageView;
    .param p5, "model"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 358
    invoke-static {p1, p3, p2, p4, p5}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "model"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 352
    invoke-static {p2, p1, p3, p4}, Laji;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 353
    const/4 v0, 0x1

    return v0
.end method
