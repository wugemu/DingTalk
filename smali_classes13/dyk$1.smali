.class final Ldyk$1;
.super Lcme;
.source "PublicAccountAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyk;->a(Ljava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldyk;


# direct methods
.method constructor <init>(Ldyk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyk;

    .prologue
    .line 35
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;>;"
    iput-object p1, p0, Ldyk$1;->b:Ldyk;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
