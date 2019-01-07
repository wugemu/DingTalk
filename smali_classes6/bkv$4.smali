.class public final Lbkv$4;
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

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lbkv$4;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput p2, p0, Lbkv$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-static {v0}, Lbjz;->y(Z)V

    .line 567
    iget-object v0, p0, Lbkv$4;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget v1, p0, Lbkv$4;->b:I

    invoke-static {v0, p1, v1}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/view/View;I)V

    .line 568
    return-void
.end method
