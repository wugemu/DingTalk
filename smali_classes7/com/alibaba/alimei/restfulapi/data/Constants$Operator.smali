.class public abstract Lcom/alibaba/alimei/restfulapi/data/Constants$Operator;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Operator"
.end annotation


# static fields
.field public static final alm_operator_cmcc:Ljava/lang/String; = "CMCC"

.field public static final alm_operator_ctcc:Ljava/lang/String; = "CTCC"

.field public static final alm_operator_cucc:Ljava/lang/String; = "CUCC"


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/data/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/data/Constants;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Constants$Operator;->this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
