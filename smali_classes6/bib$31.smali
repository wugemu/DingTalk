.class final Lbib$31;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbib;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 1478
    iput-object p1, p0, Lbib$31;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 1481
    iget-object v0, p0, Lbib$31;->a:Lbib;

    iget-object v0, v0, Lbib;->r:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setStrikeValue(F)V

    .line 1482
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 1486
    return-void
.end method
