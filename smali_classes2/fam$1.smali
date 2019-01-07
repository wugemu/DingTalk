.class final Lfam$1;
.super Lcmg;
.source "DingEnergyAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfam;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfos;",
        "Lcom/alibaba/android/user/model/EnergyRecordObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfam;


# direct methods
.method constructor <init>(Lfam;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfam;

    .prologue
    .line 34
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/model/EnergyRecordObject;>;"
    iput-object p1, p0, Lfam$1;->a:Lfam;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 34
    check-cast p1, Lfos;

    .line 2019
    if-nez p1, :cond_0

    .line 2020
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2023
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/EnergyRecordObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/EnergyRecordObject;-><init>()V

    .line 2024
    iget-object v1, p1, Lfos;->a:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2024
    iput v1, v0, Lcom/alibaba/android/user/model/EnergyRecordObject;->a:I

    .line 2025
    iget-object v1, p1, Lfos;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2025
    iput v1, v0, Lcom/alibaba/android/user/model/EnergyRecordObject;->b:I

    goto :goto_0
.end method
