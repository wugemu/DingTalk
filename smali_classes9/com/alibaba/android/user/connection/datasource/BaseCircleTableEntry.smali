.class public abstract Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "BaseCircleTableEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/bee/impl/table/BaseTableEntry;"
    }
.end annotation


# static fields
.field public static final SINGLE:[Ljava/lang/String;

.field public static final STUB:Ljava/lang/String; = " = ? "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->SINGLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract fillContentValues(Landroid/content/ContentValues;)V
.end method

.method public abstract fillWithObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract toObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
