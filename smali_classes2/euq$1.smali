.class final Leuq$1;
.super Ljava/lang/Object;
.source "TeleConfFunctionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leuq;->a(Leuq$c;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

.field final synthetic b:Leuq;


# direct methods
.method constructor <init>(Leuq;Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;)V
    .locals 0
    .param p1, "this$0"    # Leuq;

    .prologue
    .line 181
    iput-object p1, p0, Leuq$1;->b:Leuq;

    iput-object p2, p0, Leuq$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Leuq$1;->b:Leuq;

    iget-object v1, p0, Leuq$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Leuq$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    invoke-static {v0, v2, v3, v1}, Leuq;->a(Leuq;JLcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;)V

    .line 185
    return-void
.end method
