.class public abstract Lcyt;
.super Lctv;
.source "UserFileViewHolder.java"


# instance fields
.field private S:Landroid/widget/ImageView;

.field private Y:Landroid/view/View;

.field private Z:Landroid/view/View;

.field private a:Landroid/widget/TextView;

.field private aa:Lpl/droidsonroids/gif/GifImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 33
    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/MessageContent$FileContent;)Ljava/lang/String;
    .locals 2
    .param p0, "fileContent"    # Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .prologue
    .line 36
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcyt;Lcom/alibaba/wukong/im/MessageContent$FileContent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcyt;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .prologue
    .line 22
    invoke-static {p1}, Lcyt;->a(Lcom/alibaba/wukong/im/MessageContent$FileContent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iput-object p2, p0, Lcyt;->Z:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcyt;->r:Landroid/view/View;

    sget v1, Lctk$f;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcyt;->Y:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcyt;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyt;->a:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcyt;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv_link_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyt;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcyt;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcyt;->S:Landroid/widget/ImageView;

    .line 77
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcyt;->aa:Lpl/droidsonroids/gif/GifImageView;

    .line 78
    invoke-virtual {p0, p2}, Lcyt;->c(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v2, p0, Lcyt;->Y:Landroid/view/View;

    .line 1045
    new-instance v3, Lcyt$1;

    invoke-direct {v3, p0, p2, p1}, Lcyt$1;-><init>(Lcyt;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 62
    .local v0, "file":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    iget-object v2, p0, Lcyt;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcyt;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcyt;->a(Lcom/alibaba/wukong/im/MessageContent$FileContent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcow;->a(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "fileResource":I
    iget-object v2, p0, Lcyt;->S:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcyt;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 67
    iget-object v2, p0, Lcyt;->aa:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v2}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 68
    return-void
.end method

.method protected abstract c(Landroid/view/View;)V
.end method
