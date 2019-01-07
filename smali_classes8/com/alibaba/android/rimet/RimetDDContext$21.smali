.class final Lcom/alibaba/android/rimet/RimetDDContext$21;
.super Lcom/alibaba/wukong/im/MessageProxy;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initWukongIM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$21;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/MessageProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Lcom/alibaba/wukong/im/ExtendedMessage;
    .locals 1

    .prologue
    .line 2572
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;-><init>()V

    return-object v0
.end method
