.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;
.super Landroid/app/DatePickerDialog;
.source "H5DatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showDateDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLiny;Lcom/alibaba/fastjson/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method