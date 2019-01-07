.class final Ldxy$28;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->c(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;",
        "Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxy;


# direct methods
.method constructor <init>(Ldxy;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxy;

    .prologue
    .line 160
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;>;"
    iput-object p1, p0, Ldxy$28;->a:Ldxy;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 160
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    return-object p1
.end method
