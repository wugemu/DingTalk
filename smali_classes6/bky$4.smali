.class public final Lbky$4;
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

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lbky$4;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbky$4;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbky$4;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-static {v0}, Lbjz;->y(Z)V

    .line 564
    iget-object v0, p0, Lbky$4;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbky$4;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget v2, Laxp$i;->dt_ding_conference_reject_prompt:I

    new-instance v3, Lbky$4$1;

    invoke-direct {v3, p0}, Lbky$4$1;-><init>(Lbky$4;)V

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V

    .line 573
    return-void
.end method
