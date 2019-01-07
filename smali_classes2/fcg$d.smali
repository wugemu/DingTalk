.class final Lfcg$d;
.super Lfcg$c;
.source "PostHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lfcg;


# direct methods
.method constructor <init>(Lfcg;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lfcg;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 308
    iput-object p1, p0, Lfcg$d;->b:Lfcg;

    .line 309
    invoke-direct {p0, p1, p2}, Lfcg$c;-><init>(Lfcg;Landroid/view/View;)V

    .line 310
    sget v0, Lezg$h;->text_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcg$d;->a:Landroid/widget/TextView;

    .line 311
    return-void
.end method


# virtual methods
.method final b(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 4
    .param p1, "noticeObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 315
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 316
    .local v0, "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-nez v0, :cond_0

    .line 317
    const-string/jumbo v2, "contentObject = null"

    .line 1060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 321
    :cond_0
    iget v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 322
    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .line 323
    .local v1, "linkContentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    if-nez v1, :cond_1

    .line 324
    const-string/jumbo v2, "linkContent = null"

    invoke-static {v2}, Lcoe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v2, p0, Lfcg$d;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    .end local v1    # "linkContentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    :cond_2
    iget-object v2, p0, Lfcg$d;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
