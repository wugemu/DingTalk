.class public abstract Lays;
.super Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.source "AttachmentLinkView.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field public e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->a:I

    .line 18
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->b:I

    .line 19
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->c:I

    .line 20
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->d:I

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->a:I

    .line 18
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->b:I

    .line 19
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->c:I

    .line 20
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->d:I

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->a:I

    .line 18
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->b:I

    .line 19
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->c:I

    .line 20
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lays;->d:I

    .line 36
    return-void
.end method


# virtual methods
.method public setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iput-object v0, p0, Lays;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 44
    :cond_0
    iget-object v0, p0, Lays;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lays;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lays;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    const-string/jumbo v1, "@lALOBqM-pMzIzMg"

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 47
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 48
    return-void
.end method
