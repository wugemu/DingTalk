.class final Lbnp$d;
.super Lbnp$c;
.source "PostHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lbnp;


# direct methods
.method constructor <init>(Lbnp;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lbnp;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 304
    iput-object p1, p0, Lbnp$d;->b:Lbnp;

    .line 305
    invoke-direct {p0, p1, p2}, Lbnp$c;-><init>(Lbnp;Landroid/view/View;)V

    .line 306
    sget v0, Lbpu$d;->text_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnp$d;->a:Landroid/widget/TextView;

    .line 307
    return-void
.end method


# virtual methods
.method final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 4
    .param p1, "noticeObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 311
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 312
    .local v0, "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-nez v0, :cond_0

    .line 313
    const-string/jumbo v2, "contentObject = null"

    .line 1076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 317
    :cond_0
    iget v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 318
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    .line 319
    .local v1, "linkContentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    if-nez v1, :cond_1

    .line 320
    const-string/jumbo v2, "linkContent = null"

    invoke-static {v2}, Lcoe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v2, p0, Lbnp$d;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    .end local v1    # "linkContentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    :cond_2
    iget-object v2, p0, Lbnp$d;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
