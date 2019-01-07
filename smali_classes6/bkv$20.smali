.class public final Lbkv$20;
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
    .line 324
    iput-object p1, p0, Lbkv$20;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-static {v0}, Lbjz;->x(Z)V

    .line 328
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v0, p0, Lbkv$20;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 329
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 329
    iget-object v0, p0, Lbkv$20;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 330
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 328
    invoke-virtual/range {v1 .. v6}, Lbbp;->a(JIILcma;)V

    .line 333
    return-void
.end method
