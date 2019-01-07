.class public Lcom/alibaba/mtl/appmonitor/model/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Dimension;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_NULL_VALUE:Ljava/lang/String; = "null"


# instance fields
.field protected constantValue:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Dimension$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->constantValue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "constantValue"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->constantValue:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    .line 31
    if-eqz p2, :cond_0

    .end local p2    # "constantValue":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->constantValue:Ljava/lang/String;

    .line 32
    return-void

    .line 31
    .restart local p2    # "constantValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "null"

    goto :goto_0
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .locals 5
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "ret":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "constantValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v3, v1, v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "ret":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .local v3, "ret":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    move-object v2, v3

    .line 90
    .end local v0    # "constantValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "ret":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .restart local v2    # "ret":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 64
    .local v0, "other":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 65
    iget-object v3, v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 66
    :cond_4
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getConstantValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->constantValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 55
    .local v0, "result":I
    return v0

    .line 54
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setConstantValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "constantValue"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->constantValue:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->constantValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Dimension;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
