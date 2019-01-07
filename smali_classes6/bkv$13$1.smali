.class final Lbkv$13$1;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkv$13;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lbkv$13;


# direct methods
.method constructor <init>(Lbkv$13;)V
    .locals 0
    .param p1, "this$0"    # Lbkv$13;

    .prologue
    .line 790
    iput-object p1, p0, Lbkv$13$1;->a:Lbkv$13;

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

    .line 799
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 790
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2793
    sget v0, Laxp$i;->dt_ding_already_confirmed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 790
    return-void
.end method
