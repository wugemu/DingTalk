.class final Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;
.super Landroid/widget/BaseAdapter;
.source "MenuInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/MenuInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/MenuInputView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->a:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    .line 183
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 196
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 205
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 210
    if-nez p2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->a:Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$g;->menu_input_menu_item:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/MenuInputView$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;

    .line 215
    .local v0, "data":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    sget v1, Lctk$f;->item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    :goto_0
    return-object p2

    .line 218
    .restart local v0    # "data":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    :cond_1
    sget v1, Lctk$f;->item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    :cond_2
    sget v1, Lctk$f;->item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
