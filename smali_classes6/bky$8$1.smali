.class final Lbky$8$1;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbky$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbky$8;


# direct methods
.method constructor <init>(Lbky$8;)V
    .locals 0
    .param p1, "this$0"    # Lbky$8;

    .prologue
    .line 721
    iput-object p1, p0, Lbky$8$1;->a:Lbky$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1904
    const-string/jumbo v0, "ding_popup_confirm_error"

    invoke-static {v0}, Lbjz;->b(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2724
    sget v0, Laxp$i;->dt_ding_already_confirmed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 721
    return-void
.end method
