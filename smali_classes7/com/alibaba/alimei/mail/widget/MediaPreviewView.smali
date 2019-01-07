.class public Lcom/alibaba/alimei/mail/widget/MediaPreviewView;
.super Landroid/widget/RelativeLayout;
.source "MediaPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    sget v1, Laxo$g;->cmail_media_preview:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->img:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->a:Landroid/widget/ImageView;

    .line 75
    sget v1, Laxo$f;->cancel:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->b:Landroid/view/View;

    .line 76
    sget v1, Laxo$f;->ok:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->c:Landroid/view/View;

    .line 77
    sget v1, Laxo$f;->video:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->d:Landroid/view/View;

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->addView(Landroid/view/View;)V

    .line 1084
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->b:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 117
    .local v0, "id":I
    sget v1, Laxo$f;->cancel:I

    if-ne v1, v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->e:Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->e:Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;

    invoke-interface {v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;->b()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget v1, Laxo$f;->ok:I

    if-ne v1, v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->e:Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->e:Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;

    invoke-interface {v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;->h_()V

    goto :goto_0
.end method

.method public setClickListener(Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->e:Lcom/alibaba/alimei/mail/widget/MediaPreviewView$a;

    .line 70
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v7, 0x1

    .line 94
    .local v7, "isImage":Z
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string/jumbo v0, ".mp4"

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v7, 0x0

    .line 101
    :cond_1
    if-eqz v7, :cond_2

    .line 102
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 103
    .local v6, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    .end local v6    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 107
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafi;->a(Landroid/content/Context;)Lafi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lafi;->a(Landroid/widget/ImageView;Ljava/lang/String;III)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
