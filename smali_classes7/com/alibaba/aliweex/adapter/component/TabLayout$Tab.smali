.class public final Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/aliweex/adapter/component/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mCustomView:Landroid/view/View;

.field private final mParent:Lcom/alibaba/aliweex/adapter/component/TabLayout;

.field private mPosition:I


# direct methods
.method constructor <init>(Lcom/alibaba/aliweex/adapter/component/TabLayout;)V
    .locals 1
    .param p1, "parent"    # Lcom/alibaba/aliweex/adapter/component/TabLayout;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mPosition:I

    .line 249
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mParent:Lcom/alibaba/aliweex/adapter/component/TabLayout;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)Lcom/alibaba/aliweex/adapter/component/TabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mParent:Lcom/alibaba/aliweex/adapter/component/TabLayout;

    return-object v0
.end method


# virtual methods
.method public final getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mPosition:I

    return v0
.end method

.method public final isSelected()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mParent:Lcom/alibaba/aliweex/adapter/component/TabLayout;

    invoke-virtual {v0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final select()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mCustomView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mParent:Lcom/alibaba/aliweex/adapter/component/TabLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->selectTab(Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;)V

    .line 278
    return-void
.end method

.method public final setCustomView(Landroid/view/View;)Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 260
    iget v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mParent:Lcom/alibaba/aliweex/adapter/component/TabLayout;

    iget v1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mPosition:I

    invoke-static {v0, v1}, Lcom/alibaba/aliweex/adapter/component/TabLayout;->access$100(Lcom/alibaba/aliweex/adapter/component/TabLayout;I)V

    .line 263
    :cond_0
    return-object p0
.end method

.method final setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/alibaba/aliweex/adapter/component/TabLayout$Tab;->mPosition:I

    .line 272
    return-void
.end method
