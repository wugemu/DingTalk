.class public final enum Lali/mmpc/pwp/RenderLayout;
.super Ljava/lang/Enum;
.source "RenderLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/pwp/RenderLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/pwp/RenderLayout;

.field public static final enum Render_Layout_Horizontal:Lali/mmpc/pwp/RenderLayout;

.field public static final enum Render_Layout_Vertical:Lali/mmpc/pwp/RenderLayout;

.field public static final enum Unkown:Lali/mmpc/pwp/RenderLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lali/mmpc/pwp/RenderLayout;

    const-string/jumbo v1, "Render_Layout_Vertical"

    invoke-direct {v0, v1, v2}, Lali/mmpc/pwp/RenderLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/RenderLayout;->Render_Layout_Vertical:Lali/mmpc/pwp/RenderLayout;

    new-instance v0, Lali/mmpc/pwp/RenderLayout;

    const-string/jumbo v1, "Render_Layout_Horizontal"

    invoke-direct {v0, v1, v3}, Lali/mmpc/pwp/RenderLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/RenderLayout;->Render_Layout_Horizontal:Lali/mmpc/pwp/RenderLayout;

    new-instance v0, Lali/mmpc/pwp/RenderLayout;

    const-string/jumbo v1, "Unkown"

    invoke-direct {v0, v1, v4}, Lali/mmpc/pwp/RenderLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/RenderLayout;->Unkown:Lali/mmpc/pwp/RenderLayout;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lali/mmpc/pwp/RenderLayout;

    sget-object v1, Lali/mmpc/pwp/RenderLayout;->Render_Layout_Vertical:Lali/mmpc/pwp/RenderLayout;

    aput-object v1, v0, v2

    sget-object v1, Lali/mmpc/pwp/RenderLayout;->Render_Layout_Horizontal:Lali/mmpc/pwp/RenderLayout;

    aput-object v1, v0, v3

    sget-object v1, Lali/mmpc/pwp/RenderLayout;->Unkown:Lali/mmpc/pwp/RenderLayout;

    aput-object v1, v0, v4

    sput-object v0, Lali/mmpc/pwp/RenderLayout;->$VALUES:[Lali/mmpc/pwp/RenderLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lali/mmpc/pwp/RenderLayout;
    .locals 5
    .param p0, "renderLayOut"    # I

    .prologue
    .line 11
    invoke-static {}, Lali/mmpc/pwp/RenderLayout;->values()[Lali/mmpc/pwp/RenderLayout;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 12
    .local v0, "type":Lali/mmpc/pwp/RenderLayout;
    invoke-virtual {v0}, Lali/mmpc/pwp/RenderLayout;->ordinal()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 16
    .end local v0    # "type":Lali/mmpc/pwp/RenderLayout;
    :goto_1
    return-object v0

    .line 11
    .restart local v0    # "type":Lali/mmpc/pwp/RenderLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    .end local v0    # "type":Lali/mmpc/pwp/RenderLayout;
    :cond_1
    sget-object v0, Lali/mmpc/pwp/RenderLayout;->Unkown:Lali/mmpc/pwp/RenderLayout;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/pwp/RenderLayout;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lali/mmpc/pwp/RenderLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/pwp/RenderLayout;

    return-object v0
.end method

.method public static values()[Lali/mmpc/pwp/RenderLayout;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lali/mmpc/pwp/RenderLayout;->$VALUES:[Lali/mmpc/pwp/RenderLayout;

    invoke-virtual {v0}, [Lali/mmpc/pwp/RenderLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/pwp/RenderLayout;

    return-object v0
.end method
