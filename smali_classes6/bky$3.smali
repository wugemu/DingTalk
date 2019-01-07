.class public final Lbky$3;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lbky$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbky$3;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    .line 551
    const/4 v0, 0x0

    invoke-static {v0}, Lbjz;->x(Z)V

    .line 552
    iget-object v0, p0, Lbky$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbky$3;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0, v1}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 553
    return-void
.end method
