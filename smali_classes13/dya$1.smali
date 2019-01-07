.class final Ldya$1;
.super Lcme;
.source "ImAttractApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldya;->a(Lcom/alibaba/android/dingtalkim/models/AttractModelObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldya;


# direct methods
.method constructor <init>(Ldya;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldya;

    .prologue
    .line 22
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/String;>;"
    iput-object p1, p0, Ldya$1;->b:Ldya;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
