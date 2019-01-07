.class final Leeq$2$1;
.super Ljava/lang/Object;
.source "OAManagerHeaderDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leeq$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leeq$2;


# direct methods
.method constructor <init>(Leeq$2;)V
    .locals 0
    .param p1, "this$1"    # Leeq$2;

    .prologue
    .line 180
    iput-object p1, p0, Leeq$2$1;->a:Leeq$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Leeq$2$1;->a:Leeq$2;

    iget-object v0, v0, Leeq$2;->b:Leeq;

    .line 1045
    iget-object v0, v0, Leeq;->e:Landroid/view/View;

    .line 183
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void
.end method
