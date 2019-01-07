.class public abstract Lcom/j256/ormlite/field/types/BaseDataType;
.super Lcom/j256/ormlite/field/BaseFieldConverter;
.source "BaseDataType.java"

# interfaces
.implements Lcom/j256/ormlite/field/DataPersister;


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/j256/ormlite/field/SqlType;

.field private final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/j256/ormlite/field/types/BaseDataType;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 1
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDataType;->b:Lcom/j256/ormlite/field/SqlType;

    .line 56
    sget-object v0, Lcom/j256/ormlite/field/types/BaseDataType;->a:[Ljava/lang/Class;

    iput-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDataType;->b:Lcom/j256/ormlite/field/SqlType;

    .line 47
    iput-object p2, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->b:Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method public a(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "currentValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Field;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 61
    iget-object v5, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v4

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 66
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final c()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->c:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/j256/ormlite/field/types/BaseDataType;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should not have tried to generate this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method
