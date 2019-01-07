.class Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
.super Ljava/lang/Object;
.source "TextContentBoxMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSpanOperation"
.end annotation


# instance fields
.field protected final end:I

.field protected final flag:I

.field protected final start:I

.field final synthetic this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

.field protected final what:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;)V
    .locals 6
    .param p1, "this$0"    # Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "what"    # Ljava/lang/Object;

    .prologue
    .line 85
    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;I)V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;IILjava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "what"    # Ljava/lang/Object;
    .param p5, "flag"    # I

    .prologue
    .line 88
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->start:I

    .line 90
    iput p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->end:I

    .line 91
    iput-object p4, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->what:Ljava/lang/Object;

    .line 92
    iput p5, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->flag:I

    .line 93
    return-void
.end method


# virtual methods
.method public execute(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "sb"    # Landroid/text/Spannable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->what:Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->start:I

    iget v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->end:I

    iget v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;->flag:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    return-void
.end method
