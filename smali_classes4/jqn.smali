.class public abstract Ljqn;
.super Ljava/lang/Object;
.source "IWMLPageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcn;

.field protected b:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

.field protected c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragmentManager"    # Lcn;
    .param p3, "manifest"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .prologue
    .line 21
    .local p0, "this":Ljqn;, "Ljqn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Ljqn;->a:Lcn;

    .line 23
    iput-object p3, p0, Ljqn;->b:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .line 24
    iput-object p1, p0, Ljqn;->c:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z
.end method

.method public abstract b(Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)Z
.end method
