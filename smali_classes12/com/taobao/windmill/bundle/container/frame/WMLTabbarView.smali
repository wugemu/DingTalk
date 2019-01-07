.class public Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;
.super Landroid/widget/LinearLayout;
.source "WMLTabbarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;,
        Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;
    }
.end annotation


# instance fields
.field public a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljps;

.field private d:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

.field private e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setOrientation(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->setOrientation(I)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;

    return-object v0
.end method

.method public static synthetic c(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    return-object v0
.end method

.method public static synthetic d(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;)Ljps;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->c:Ljps;

    return-object v0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setOnTabChangeListener(Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->e:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$a;

    .line 50
    return-void
.end method

.method public setSelected(I)V
    .locals 5
    .param p1, "selectedIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 117
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 118
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    .line 119
    .local v3, "tabItemView":Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;
    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabPageModel;->tabs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;

    .line 120
    .local v0, "data":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;
    if-ne p1, v1, :cond_0

    .line 121
    invoke-virtual {v3, v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->setSelected(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;)V

    .line 122
    iput-object v3, p0, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView;->d:Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;

    .line 117
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v3, v0}, Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;->setUnSelected(Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;)V

    goto :goto_1

    .line 127
    .end local v0    # "data":Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$TabItemModel;
    .end local v3    # "tabItemView":Lcom/taobao/windmill/bundle/container/frame/WMLTabbarView$b;
    :cond_1
    return-void
.end method
