.class final Lcom/alibaba/alimei/component/picker/PickerView$1;
.super Ljava/lang/Object;
.source "PickerView.java"

# interfaces
.implements Lctf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/component/picker/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lctf",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/component/picker/PickerView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/component/picker/PickerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/component/picker/PickerView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/alimei/component/picker/PickerView$1;->b:Lcom/alibaba/alimei/component/picker/PickerView;

    iput p2, p0, Lcom/alibaba/alimei/component/picker/PickerView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(ILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    .line 1098
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView$1;->b:Lcom/alibaba/alimei/component/picker/PickerView;

    invoke-static {v0}, Lcom/alibaba/alimei/component/picker/PickerView;->a(Lcom/alibaba/alimei/component/picker/PickerView;)Lsk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alibaba/alimei/component/picker/PickerView$1;->b:Lcom/alibaba/alimei/component/picker/PickerView;

    invoke-static {v0}, Lcom/alibaba/alimei/component/picker/PickerView;->a(Lcom/alibaba/alimei/component/picker/PickerView;)Lsk;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/component/picker/PickerView$1;->a:I

    invoke-virtual {v0, p1, v1}, Lsk;->a(II)V

    .line 94
    :cond_0
    return-void
.end method
