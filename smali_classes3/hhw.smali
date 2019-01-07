.class public final Lhhw;
.super Ljava/lang/Object;
.source "FragmentAnims.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-array v0, v6, [I

    sget v1, Lhdn$b;->fragment_slide_right_in:I

    aput v1, v0, v2

    sget v1, Lhdn$b;->fragment_slide_left_out:I

    aput v1, v0, v3

    sget v1, Lhdn$b;->fragment_slide_left_in:I

    aput v1, v0, v4

    sget v1, Lhdn$b;->fragment_slide_right_out:I

    aput v1, v0, v5

    sput-object v0, Lhhw;->a:[I

    .line 26
    new-array v0, v6, [I

    sget v1, Lhdn$b;->fragment_slide_bottom_in:I

    aput v1, v0, v2

    sget v1, Lhdn$b;->fragment_slide_top_out:I

    aput v1, v0, v3

    sget v1, Lhdn$b;->fragment_slide_top_in:I

    aput v1, v0, v4

    sget v1, Lhdn$b;->fragment_slide_bottom_out:I

    aput v1, v0, v5

    sput-object v0, Lhhw;->b:[I

    .line 32
    new-array v0, v6, [I

    sget v1, Lhdn$b;->fragment_static_in:I

    aput v1, v0, v2

    sget v1, Lhdn$b;->fragment_static_out:I

    aput v1, v0, v3

    sget v1, Lhdn$b;->fragment_shadow_in:I

    aput v1, v0, v4

    sget v1, Lhdn$b;->fragment_slide_bottom_out:I

    aput v1, v0, v5

    sput-object v0, Lhhw;->c:[I

    .line 38
    new-array v0, v6, [I

    sget v1, Lhdn$b;->fragment_slide_left_in:I

    aput v1, v0, v2

    sget v1, Lhdn$b;->fragment_slide_right_out:I

    aput v1, v0, v3

    sget v1, Lhdn$b;->fragment_slide_right_in:I

    aput v1, v0, v4

    sget v1, Lhdn$b;->fragment_slide_left_out:I

    aput v1, v0, v5

    sput-object v0, Lhhw;->d:[I

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    sput-object v0, Lhhw;->e:Landroid/util/SparseArray;

    new-array v1, v2, [I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lhhw;->e:Landroid/util/SparseArray;

    sget-object v1, Lhhw;->a:[I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lhhw;->e:Landroid/util/SparseArray;

    sget-object v1, Lhhw;->b:[I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lhhw;->e:Landroid/util/SparseArray;

    sget-object v1, Lhhw;->c:[I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lhhw;->e:Landroid/util/SparseArray;

    sget-object v1, Lhhw;->d:[I

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)[I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 58
    sget-object v0, Lhhw;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
