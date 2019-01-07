.class public final Lbkv$3;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lbkv$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-static {v0}, Lbjz;->x(Z)V

    .line 556
    iget-object v0, p0, Lbkv$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;ILjava/lang/String;Landroid/view/View;)V

    .line 557
    return-void
.end method
