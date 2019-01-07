.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/zzb;


# instance fields
.field private agN:Lcom/google/android/gms/maps/model/LatLng;

.field private agO:D

.field private agP:F

.field private agQ:Z

.field private agR:Z

.field private mFillColor:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/zzb;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agN:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agO:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agP:F

    iput-boolean v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agQ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agR:Z

    iput v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agN:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agO:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agP:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agQ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agR:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agN:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agO:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agP:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agQ:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agR:Z

    return-void
.end method


# virtual methods
.method public final center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agN:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final clickable(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agR:Z

    return-object p0
.end method

.method public final fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    return-object p0
.end method

.method public final getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agN:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mFillColor:I

    return v0
.end method

.method public final getRadius()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agO:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    return v0
.end method

.method final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mVersionCode:I

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agP:F

    return v0
.end method

.method public final isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agR:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agQ:Z

    return v0
.end method

.method public final radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agO:D

    return-object p0
.end method

.method public final strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeColor:I

    return-object p0
.end method

.method public final strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agQ:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzb;->zza(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->agP:F

    return-object p0
.end method
